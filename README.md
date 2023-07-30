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

### 参考文献
1. [NOS faucet](https://newbitcoincity.com/topup?tab=faucet&address=)
2. [Fully on-chain Tic-Tac-Toe](https://docs.trustless.computer/contracts-games/fully-on-chain-tic-tac-toe)
3. [Layer 2: NOS](https://docs.trustless.computer/trustless-computer/layer-2-nos)
4. [endpoints ingos](https://docs.trustless.computer/trustless-computer/helpful-endpoints)
5. [builders info](https://newbitcoincity.com/builder)
6. [TC gas station](https://tcgasstation.com/)
7. [BlockExplorer](https://explorer.l2.trustless.computer/)
8. []()
