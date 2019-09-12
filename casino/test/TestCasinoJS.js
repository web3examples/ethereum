const Casino = artifacts.require("Casino");

contract('Casino', (accounts) => {
  it('should put 0 in the bank', async () => {
    const casinoInstance = await Casino.deployed();
    const balance = await casinoInstance.getBankBalance.call();

    assert.equal(balance.valueOf(), 0, "should be 0");
  });
});
