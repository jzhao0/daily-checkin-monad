【Week 2 最小 Web3 / AI 原型定义】

一、我要做的最小功能是什么？

我要在已经部署到 Monad Testnet 的 DailyCheckIn 智能合约基础上，制作一个最小网页 DApp。

用户打开网页后，可以连接浏览器钱包，查看自己是否能够打卡、累计打卡次数，并点击按钮调用 checkIn() 完成一次链上打卡。

网页还会显示交易的 Pending、Success 或 Failed 状态，以及对应的 MonadVision 区块浏览器链接。

为了加入 AI 元素，本周先增加一个简单的“交易解释”区域：交易完成后，用固定模板生成一段面向初学者的中文说明，例如解释本次调用了什么函数、是否修改了链上状态、为什么产生 Transaction Hash。真实的大模型 API 暂时使用 mock，不在本周接入。

二、谁会使用它？

主要用户是刚开始学习 Web3、智能合约和 Monad 的初学者。

用户不需要直接进入 Remix，也不需要理解 ABI 的具体格式，只需要连接钱包并点击网页按钮，就能够完成智能合约查询和打卡操作。

三、用户完成的一个核心动作是什么？

用户完成的核心动作是：

连接钱包
→ 检查 Monad Testnet 网络
→ 查看是否可以打卡
→ 点击 Check In
→ 在钱包中确认交易
→ 查看交易结果和区块浏览器链接

这个动作同时包含：

1. 钱包连接；
2. 网络检测；
3. read function 查询；
4. write function 调用；
5. 钱包签名；
6. Transaction Hash 展示；
7. 区块浏览器验证。

四、我需要阅读的 1–3 个文档

1. Monad Developer Docs
用于确认 Monad Testnet 网络信息、Chain ID 和开发环境要求。

https://docs.monad.xyz/

2. ethers.js Docs
用于连接浏览器钱包、读取合约状态和发送合约交易。

https://docs.ethers.org/

3. MetaMask / EIP-1193 Provider Docs
用于理解浏览器钱包连接、账户变化和网络切换。

https://docs.metamask.io/wallet/

五、本周真实实现什么？

本周计划真实实现：

1. 创建一个最小网页页面；
2. 连接 Bitget Wallet 或 MetaMask；
3. 获取当前钱包地址；
4. 检查 Chain ID 是否为 10143；
5. 网络错误时提示切换到 Monad Testnet；
6. 使用现有合约地址和 ABI 加载 DailyCheckIn；
7. 调用 checkInCount(address)；
8. 调用 canCheckIn(address)；
9. 点击按钮调用 checkIn()；
10. 显示 Pending、Success 和 Failed 状态；
11. 显示完整 Transaction Hash；
12. 提供 MonadVision 区块浏览器入口；
13. 将代码、运行说明和截图更新到 GitHub。

现有合约信息：

合约名称：
DailyCheckIn

部署网络：
Monad Testnet

Chain ID：
10143

合约地址：
0xcB4993E563a4C892d945277C53a39ee6885097E0

六、哪些内容可以 mock？

本周可以 mock 的内容：

1. AI 交易解释暂时使用固定规则和模板生成，不接入真实大模型 API；
2. 用户昵称和头像使用默认值；
3. 积分、连续签到、排行榜和徽章暂时只展示界面草图；
4. 不接入 Polymarket 或其他预测市场的真实数据；
5. 不实现后台数据库；
6. 不处理主网资产和真实资金；
7. 不实现复杂登录系统。

本周不需要完成完整产品，重点是验证：

网页能否连接钱包
→ 能否读取链上数据
→ 能否发送交易
→ 能否显示可验证结果

七、我如何证明它做出来了？

我将通过以下材料证明原型已经完成：

1. GitHub 仓库链接；
2. 前端源代码；
3. README v0.2；
4. 钱包连接成功截图；
5. Monad Testnet 网络检测截图；
6. checkInCount 和 canCheckIn 查询结果；
7. checkIn() 交易成功截图；
8. 完整 Transaction Hash；
9. MonadVision 区块浏览器链接；
10. 一段简单的操作录屏或连续截图；
11. GitHub Commit 记录。

验收标准：

1. 用户可以连接钱包；
2. 页面能够显示正确钱包地址；
3. 页面能够识别 Monad Testnet；
4. 页面能够读取 checkInCount；
5. 页面能够调用 checkIn()；
6. 交易成功后能够显示 Transaction Hash；
7. 区块浏览器能够验证该交易；
8. 整个过程不暴露私钥、助记词、API Key 或钱包密码。

八、与后续项目方向的关系

这个原型是我后续预测市场和链上量化工具的技术基础。

DailyCheckIn 目前验证的是：

钱包连接
→ 链上数据读取
→ 链上状态写入
→ 交易反馈
→ 区块浏览器验证

后续可以将“打卡记录”替换为“预测记录”，例如让用户提交：

- marketId；
- 预测概率；
- 预测时间；
- 模型版本；
- 研究报告 Hash。

链下负责获取市场数据、运行量化分析和生成 AI 报告；Monad 负责保存需要公开验证的预测记录、时间证明和结果信誉。
