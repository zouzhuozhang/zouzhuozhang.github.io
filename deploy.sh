#!/usr/bin/env bash
# 一键发布:构建博客并部署到 GitHub Pages(homepage 分支)
# 用法:在 master 分支提交文章后,运行 ./deploy.sh
set -euo pipefail

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
WORKTREE="/tmp/pages-deploy"

cd "$REPO_DIR"

BRANCH="$(git rev-parse --abbrev-ref HEAD)"
if [ "$BRANCH" != "master" ]; then
  echo "❌ 请在 master 分支上运行(当前:$BRANCH)"
  exit 1
fi

echo "==> 推送 master 到远程(如有未推送的提交)"
git push origin master

echo "==> 构建站点"
hugo build

echo "==> 同步 homepage 部署分支"
git fetch origin homepage --quiet
git branch -f homepage origin/homepage
git worktree remove --force "$WORKTREE" 2>/dev/null || true
git worktree prune
git worktree add "$WORKTREE" homepage >/dev/null

cd "$WORKTREE"
find . -maxdepth 1 ! -name '.git' ! -name 'CNAME' ! -name '.' -exec rm -rf {} +
cp -r "$REPO_DIR/public/." .

git add -A
if git diff --cached --quiet; then
  echo "==> 构建产物无变化,跳过部署"
else
  git commit -m "部署:同步构建产物 ($(date '+%Y-%m-%d %H:%M'))" --quiet
  git push origin homepage
fi

cd "$REPO_DIR"
git worktree remove --force "$WORKTREE" 2>/dev/null || true

echo "✅ 发布完成,1-2 分钟后访问 https://www.jonezhang.online/(CDN 缓存最长 10 分钟)"
