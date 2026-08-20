---
title: "文章标题"
summary: "一句话摘要,显示在列表页"
date: 2026-08-20
series: ["Agent架构"]       # 云原生系列改为 ["云原生"]
tags: ["关键词1", "关键词2"]
categories: ["Agent架构"]   # 云原生系列改为 ["云原生"]
author: ["Jone"]
---

## 需求背景

## 技术方案

## 踩坑(可选)
```

---

## 使用说明

1. 复制上面的 front matter + 正文骨架到 `content/posts/<系列>/<英文文件名>.md`
   - Agent架构系列 → `content/posts/agent-architecture/`
   - 云原生系列 → `content/posts/cloud-native/`
2. 改 `title` / `summary` / `date` / `tags` / `series`
3. 需要配图时改用子文件夹形式:`<文件名>/index.md` + 图片放同目录 `images/`

### 系列地图表格片段(仅开篇文章用)

```markdown
| # | 维度 | 内容 | 链接 | 权重 | 状态 |
|---|------|------|------|------|------|
| 1 |      |      |      |      |      |
{.series-map}
```

注意:`{.series-map}` 这一行必须**独立紧贴在表格最后一行下面**(不要并进表格行),它控制列宽比例(# 4% / 维度 13% / 内容 47% / 链接 21% / 权重 6% / 状态 9%)。
