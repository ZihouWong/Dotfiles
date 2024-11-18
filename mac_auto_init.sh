# 创建一个列表，包含需要安装的应用
homebrew_apps=("python" "git" "tree")

# 遍历应用列表，检查每个应用是否已经安装，如果没有则异步安装
for app in "${homebrew_apps[@]}"; do
    if ! brew ls --versions "$app" >/dev/null; then
        echo "$app 应用未安装，正在异步安装..."
        brew install "$app" &
    else
        echo "$app 应用已经安装！"
    fi
done



