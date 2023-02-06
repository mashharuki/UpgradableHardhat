# UpgradableHardhat
hardhatを利用してUpgradableなスマートコントラクトを開発するリポジトリになります。

## hardhatプロジェクトの開始方法

```bash
npm init -y
npm install --save-dev hardhat @openzeppelin/test-helpers
npm install dotenv @openzeppelin/contracts @chainlink/contracts
```

## Upgradable用のライブラリインストール方法

```bash
npm i @openzeppelin/contracts-upgradeable
npm i -D @openzeppelin/hardhat-upgrades
```

## テスト実施方法

```bash
npm run test
```