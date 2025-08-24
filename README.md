# BadmintonCourtManager

## Badminton Match Management System / 羽毛球比赛管理系统

A comprehensive web-based badminton match management system that allows you to organize players, manage courts, and track match statistics. The entire application is contained in a single HTML file for easy deployment and use.

一个全面的基于网页的羽毛球比赛管理系统，允许您组织球员、管理球场并跟踪比赛统计数据。整个应用程序包含在单个HTML文件中，便于部署和使用。

## 🏸 Features / 功能特性

### Player Management / 球员管理
- **Add/Edit/Delete Players / 添加/编辑/删除球员**: Manage your player roster with ease / 轻松管理您的球员名单
- **Player Status Control / 球员状态控制**: Manually set players as available or unavailable / 手动设置球员为可用或不可用状态
- **Match Statistics / 比赛统计**: Track the number of matches played by each player / 跟踪每个球员的比赛场次
- **Cost Tracking / 费用跟踪**: Monitor player fees (30 pesos per match + 140 pesos additional) / 监控球员费用（每场30比索 + 额外140比索）
- **Reset Functionality / 重置功能**: Reset all player statistics and match counts / 重置所有球员统计数据和比赛次数

### Court Management / 球场管理
- **Custom Court Numbers / 自定义球场编号**: Create courts with custom numerical identifiers / 使用自定义数字标识符创建球场
- **Court Sorting / 球场排序**: Courts are automatically sorted by number / 球场按编号自动排序
- **Individual Court Control / 独立球场控制**: Each court operates independently / 每个球场独立运行
- **Player Assignment / 球员分配**: Manually assign or randomly select 4 players per court / 手动分配或随机选择每个球场的4名球员

### Match Management / 比赛管理
- **Random Player Selection / 随机球员选择**: Automatically select 4 available players for matches / 自动选择4名可用球员进行比赛
- **Manual Player Assignment / 手动球员分配**: Choose specific players for each court / 为每个球场选择特定球员
- **Individual Match Control / 独立比赛控制**: Start and end matches on each court independently / 独立开始和结束每个球场的比赛
- **Player Availability / 球员可用性**: Players in active matches cannot join other courts until their match ends / 正在比赛的球员在比赛结束前不能加入其他球场
- **Match Validation / 比赛验证**: System prevents invalid match setups (e.g., insufficient players) / 系统防止无效的比赛设置（如球员不足）

### User Interface / 用户界面
- **Single File Application / 单文件应用**: Everything contained in one HTML file / 所有内容包含在一个HTML文件中
- **Responsive Design / 响应式设计**: Works on desktop and mobile browsers / 适用于桌面和移动浏览器
- **English Interface / 英文界面**: All controls and labels in English / 所有控件和标签均为英文
- **Real-time Updates / 实时更新**: Instant feedback on all operations / 所有操作的即时反馈
- **Modal Dialogs / 模态对话框**: Intuitive player selection interface / 直观的球员选择界面

## 🚀 Getting Started / 快速开始

### Prerequisites / 系统要求
- Any modern web browser (Chrome, Firefox, Safari, Edge) / 任何现代网页浏览器（Chrome、Firefox、Safari、Edge）
- No server or installation required / 无需服务器或安装

### Installation / 安装
1. Download the `badminton_match.html` file / 下载 `badminton_match.html` 文件
2. Open it in your web browser / 在网页浏览器中打开
3. Start managing your badminton matches! / 开始管理您的羽毛球比赛！

### Quick Start / 快速开始
1. **Add Players / 添加球员**: Use the Player Management section to add players to your roster / 使用球员管理部分将球员添加到您的名单中
2. **Create Courts / 创建球场**: Add courts with custom numbers in the Court Management section / 在球场管理部分添加自定义编号的球场
3. **Assign Players / 分配球员**: Select a court and click "Assign Players" to choose 4 players / 选择球场并点击"分配球员"选择4名球员
4. **Start Match / 开始比赛**: Click "Start Match" to begin the game / 点击"开始比赛"开始游戏
5. **End Match / 结束比赛**: Click "End Match" when the game is finished / 比赛结束时点击"结束比赛"

## 📋 Usage Guide / 使用指南

### Managing Players / 管理球员
- **Add Player / 添加球员**: Enter a name and click "Add Player" / 输入姓名并点击"添加球员"
- **Edit Player / 编辑球员**: Click the edit button next to any player / 点击任何球员旁边的编辑按钮
- **Delete Player / 删除球员**: Click the delete button to remove a player / 点击删除按钮移除球员
- **Set Status / 设置状态**: Toggle player availability using the status button / 使用状态按钮切换球员可用性
- **Reset All / 重置全部**: Use the reset button to clear all statistics / 使用重置按钮清除所有统计数据

### Managing Courts / 管理球场
- **Add Court / 添加球场**: Enter a court number and click "Add Court" / 输入球场编号并点击"添加球场"
- **Court Numbers / 球场编号**: Only numeric values are accepted / 只接受数字值
- **Automatic Sorting / 自动排序**: Courts are sorted by number automatically / 球场按编号自动排序

### Running Matches / 运行比赛
- **Player Selection / 球员选择**: Click "Assign Players" to open the selection modal / 点击"分配球员"打开选择模态框
- **Random Assignment / 随机分配**: The system automatically selects 4 random available players / 系统自动选择4名随机可用球员
- **Manual Selection / 手动选择**: Manually choose players by clicking on them / 通过点击手动选择球员
- **Match Control / 比赛控制**: Each court can start and end matches independently / 每个球场可以独立开始和结束比赛
- **Player Status / 球员状态**: Players in matches are marked as "In Match" and unavailable for other courts / 比赛中的球员标记为"比赛中"，其他球场不可用

### Cost Tracking / 费用跟踪
- Each player's cost is calculated as: `(matches × 30) + 140` pesos / 每个球员的费用计算为：`(比赛次数 × 30) + 140` 比索
- Costs are displayed in the Player Statistics section / 费用显示在球员统计部分
- Reset functionality clears all match counts and recalculates costs / 重置功能清除所有比赛次数并重新计算费用

## 🎯 System Rules / 系统规则

1. **4 Players Required / 需要4名球员**: Each match requires exactly 4 players / 每场比赛需要恰好4名球员
2. **Player Availability / 球员可用性**: Players in active matches cannot join other matches / 正在比赛的球员不能参加其他比赛
3. **Court Independence / 球场独立性**: Each court operates independently / 每个球场独立运行
4. **Numeric Court IDs / 数字球场ID**: Court numbers must be numeric values / 球场编号必须是数字值
5. **Match Completion / 比赛完成**: Players become available again after match completion / 比赛完成后球员重新变为可用状态

## 🛠️ Technical Details / 技术细节

- **Technology / 技术**: Pure HTML, CSS, and JavaScript / 纯HTML、CSS和JavaScript
- **Storage / 存储**: Browser localStorage for data persistence / 浏览器localStorage用于数据持久化
- **Compatibility / 兼容性**: Works in all modern browsers / 适用于所有现代浏览器
- **File Size / 文件大小**: Single file application (~50KB) / 单文件应用程序（约50KB）
- **Dependencies / 依赖**: None - completely self-contained / 无 - 完全自包含

## 📊 Statistics / 统计信息

The system tracks: / 系统跟踪：
- Total matches played per player / 每个球员的总比赛次数
- Player availability status / 球员可用状态
- Cost calculations per player / 每个球员的费用计算
- Active matches per court / 每个球场的活跃比赛

## 🔧 Customization / 自定义

The system allows for: / 系统允许：
- Custom court numbering / 自定义球场编号
- Player status management / 球员状态管理
- Manual player assignments / 手动球员分配
- Flexible match scheduling / 灵活的比赛安排

## 📝 Development History / 开发历史

This system was developed based on specific requirements for badminton match management, including:
该系统基于羽毛球比赛管理的特定需求开发，包括：
- Multi-court support / 多球场支持
- Individual match control / 独立比赛控制
- Player rotation management / 球员轮换管理
- Cost tracking / 费用跟踪
- English interface / 英文界面
- Single-file deployment / 单文件部署

## 🤝 Contributing / 贡献

This is a single-file application. To modify: / 这是一个单文件应用程序。要修改：
1. Open `badminton_match.html` in a text editor / 在文本编辑器中打开 `badminton_match.html`
2. Make your changes to the HTML, CSS, or JavaScript / 对HTML、CSS或JavaScript进行更改
3. Save and test in a browser / 保存并在浏览器中测试

## 📄 License / 许可证

This project is open source and available for personal and commercial use.
该项目是开源的，可用于个人和商业用途。

---

**Enjoy managing your badminton matches! 🏸**
**享受管理您的羽毛球比赛！🏸**
