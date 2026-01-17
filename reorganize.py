import os
import shutil
import re

# 1. 대상 루트 디렉토리 설정 (현재 디렉토리 기준)
root_dir = os.getcwd()

# 2. 삭제할 찌꺼기 파일/폴더 패턴
garbage_patterns = [
    r'^work$', r'^.Xil$', r'^vivado.*\.log$', r'^vivado.*\.jou$', 
    r'^xsim.*\.log$', r'^xsim.*\.jou$', r'^xvlog.*$', r'^xelab.*$',
    r'^.*\.backup\..*$', r'^.*\.str$'
]

def is_garbage(name):
    return any(re.match(pattern, name) for pattern in garbage_patterns)

def reorganize():
    print("🚀 Starting Project Reorganization...")

    for subdir, dirs, files in os.walk(root_dir, topdown=False):
        # A. 찌꺼기 파일 및 폴더 삭제
        for name in files + dirs:
            if is_garbage(name):
                path = os.path.join(subdir, name)
                try:
                    if os.path.isfile(path): os.remove(path)
                    else: shutil.rmtree(path)
                    print(f"🗑️ Deleted garbage: {name}")
                except Exception as e:
                    print(f"❌ Error deleting {name}: {e}")

        # B. 모델링 기법 폴더 통합 (1_Structural_Modeling 등)
        # 하위 폴더명이 '숫자_이름_Modeling' 형식인 경우
        if re.search(r'\d+_(Structural|Data_Flow|Behavior|Module_Instance)_Modeling', os.path.basename(subdir)):
            parent_dir = os.path.dirname(subdir)
            target_image_dir = os.path.join(parent_dir, "images")
            
            if not os.path.exists(target_image_dir):
                os.makedirs(target_image_dir)

            for item in os.listdir(subdir):
                old_path = os.path.join(subdir, item)
                
                # 1. 이미지 파일은 images 폴더로
                if item.lower().endswith(('.png', '.jpg', '.jpeg')):
                    new_path = os.path.join(target_image_dir, item)
                    shutil.move(old_path, new_path)
                    print(f"📸 Moved Image: {item} -> images/")
                
                # 2. Verilog 소스 및 README는 부모 폴더로
                elif item.lower().endswith(('.v', '.sv', '.md', 'makefile')):
                    new_path = os.path.join(parent_dir, item)
                    # 중복 파일 처리 (이름이 같으면 덮어쓰지 않고 보호)
                    if not os.path.exists(new_path):
                        shutil.move(old_path, new_path)
                        print(f"📄 Moved Source: {item} -> {os.path.basename(parent_dir)}/")
                    else:
                        print(f"⚠️ Conflict skipped: {item}")

            # 파일 이동 후 빈 폴더 삭제
            try:
                os.rmdir(subdir)
                print(f"📁 Removed empty folder: {os.path.basename(subdir)}")
            except:
                pass

    print("\n✅ Reorganization Complete!")
    print("Tip: Root Makefile과 .gitignore를 적용하여 깃허브에 업로드하세요.")

if __name__ == "__main__":
    reorganize()
