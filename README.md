# Bread UI for Vue3
## 运行步骤
1. 打开终端运行 `yarn`
2. 运行 `yarn dev`
3. 打开终端生成的链接
## 打包进官网步骤
1. 运行 `yarn`
2. 运行 `yarn build`
3. 得到的 dist 目录就是官网源代码
4. 也可以运行编辑好的 `deploy.sh`
5. 运行 `sh deploy.sh` 就可以上传到 Github 或码云等支持 Pages 功能的平台
## 库文件打包步骤
1. 使用 `yarn global add rollup@2` 安装 rollup
2. 运行 `rollup -c`
3. 得到的 dist/lib 目录就是编译后的库文件所在目录
