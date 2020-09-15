https://github.com/certikfoundation/testnet/issues/141#issuecomment-692002102

Explanations 

I created a simplified version of the ERC-20 smart contract with 3 functions: mint, transfer, and balanceOf. Then I minted 100 tokens to my address certik1xgyzm9ecgpy07wc7ey2npqca4p357hr6nddl6u. Then I transferred 50 tokens to the another address certik1lwhx0qlxnz0v73glgfuxpdg96fzx35pvw7ycfn.

Then I modified the contract by adding the burn function.

Contracts are published in this repo under:
stakintoken.sol
stakintoken-mod.sol

List of commands I used:

certikcli tx cvm deploy ~/stakintoken.sol --from user --fees 20000uctk --contract StakinToken
new contract address: "certik15exkwglpyn9la9q93qjr7a40040yzj5r5k44ur"

certikcli tx call certik15exkwglpyn9la9q93qjr7a40040yzj5r5k44ur mint 100 --from user --fees 2000uctk

certikcli tx call certik15exkwglpyn9la9q93qjr7a40040yzj5r5k44ur transfer certik1lwhx0qlxnz0v73glgfuxpdg96fzx35pvw7ycfn 50  --from user --fees 2000uctk

certikcli tx cvm deploy ~/stakintoken-mod.sol --from user --gas 200000000 --contract StakinToken
new contract address: "certik1chgqhmy9xc96kmpd9cp06ye6w003838nhhlckh"

certikcli tx call certik1chgqhmy9xc96kmpd9cp06ye6w003838nhhlckh mint 100 --from user --fees 2000uctk 

certikcli tx call certik1chgqhmy9xc96kmpd9cp06ye6w003838nhhlckh burn 50 --from user --fees 2000uctk
