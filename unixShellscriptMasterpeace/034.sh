# ファイルを別ディレクトリに同期するバックアップ処理を行う
log_dir="./"
backup_dir="./backup/"

rsync -avn "$log_dir" "$backup_dir"

