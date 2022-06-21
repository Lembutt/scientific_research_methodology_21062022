const { expect } = require('chai');
const { ethers } = require('hardhat');

describe("TestСontract", () => {
    let owner;
    let otherAddress;
    let testContract;

    const key = 'hello';
    const value = 'world';

    beforeEach(async () => {
        [owner, otherAddress] = await ethers.getSigners();
        const TestContract = await ethers.getContractFactory("TestContract", owner);
        testContract = await TestContract.deploy();
        await testContract.deployed();
    });

    it('[constructor()] \t\tВладелец должен содержаться в переменной owner смарт-контракта', async () => {
        expect(await testContract.owner()).to.equal(owner.address);
    });

    it('[addData(string, string)] Должен позволять записывать данные владельцу контракта', async () => {
        await testContract.addData(key, value);
        expect(await testContract.someData(key))
            .to.equal('world');
    });

    it('[getData(string)] \tДолжен позволять читать данные владельцу контракта', async () => {
        await testContract.addData(key, value);
        expect(await testContract.getData(key))
            .to.equal('world');
    });

    it('[addData(string, string)] Должен запрещать записывать данные лицу, которое не является владельцем контракта', () => {
        expect(testContract.connect(otherAddress.address).addData(key, value))
            .to.be.revertedWith('NOT AUTORIZED');
    });

    it('[getData(string)] \tДолжен запрещать читать данные лицу, которое не является владельцем контракта', async () => {
        await testContract.addData(key, value);
        expect(testContract.connect(otherAddress.address).getData(key))
            .to.be.revertedWith('NOT AUTORIZED');
    });
});


