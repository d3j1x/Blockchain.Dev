const FavoriteNumber = artifacts.require("./FavoriteNumber");

contract("FavoriteNumber",accounts => {
    it("should change the favorite number in blockchain", async function() {
        const Contract = await FavoriteNumber.deployed();
        const result = await Contract.setFavoriteNumber(47, {from: accounts[0]})
    })

    it("should get the favorite number in blockchain", async function() {
        const Contract = await FavoriteNumber.deployed();
        const number = await Contract.getFavoriteNumber();
        assert.equal(number.words[0], 47,"Not equal to 47");
    })
})