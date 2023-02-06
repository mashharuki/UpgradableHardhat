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

## upgradeするための準備

`backend/scripts/upgrade.ts`ファイルの2行目にアップグレードしたいコントラクトのアドレスをあらかじめ設定しておくこと。

```ts
const PROXY_CONTRACT_ID = "0x9fE46736679d2D9a65F0992F2272dE9f3c7fa6e0";
```