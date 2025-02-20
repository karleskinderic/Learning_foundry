-include .env

install:
	forge install Cyfrin/foundry-devops --no-commit
	forge install foundry-rs/forge-std --no-commit
	forge install smartcontractkit/chainlink-brownie-contracts --no-commit

build:
	forge build

build:; forge build

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

