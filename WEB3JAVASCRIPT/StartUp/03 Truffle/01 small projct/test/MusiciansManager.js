const MusiciansManager = artifacts.require('./MusiciansManager');
contract('MusiciansManager', accounts => {

    it("should add a musician", async function(){
        const Contract = await MusiciansManager.deployed();
        const result = await Contract.addMusician('0x1d9445b33cbfbe27bc767a3819e2a0f949418352',
        'Jhon',{from: accounts[0]})

        assert.equal(result.logs[0].args._artistName,"Jhon","Not equal to Jhon");
    })

    it("should add a Track", async function() {
        const Contract = await MusiciansManager.deployed();
        
        let err = null;
        try {
            await Contract.addMusician('0x1d9445b33cbfbe27bc767a3819e2a0f949418352',
        'Jhon2',{from: accounts[0]})
        }
        catch(error) {
            err = error;
        }

        assert.ok(err instanceof Error);
    })

    it('should add a track', async function(){
        const Contract = await MusiciansManager.deployed();
        const result = await Contract.addTrack('0x1d9445b33cbfbe27bc767a3819e2a0f949418352',
        'TrackTitle',345, {from: accounts[0]})

        assert.equal(result.logs[0].args._title,"TrackTitle","Not equal to track");
    })

    it('should not add a track to an unknow artist', async function() {
        const Contract = await MusiciansManager.deployed();

        let err = null;
        try{
            await Contract.addTrack('0x24e6953e3a3de180226ee6bed2a969f3e9b22be3','Trackkkk',345,{from: accounts[0]})
        }
        catch(error) {
            err = error;
        }
        assert.ok(err instanceof Error)
    })

    it('should get a track of an artist', async function(){
        const Contract = await MusiciansManager.deployed();
        const result = await Contract.getTracks('0x1d9445b33cbfbe27bc767a3819e2a0f949418352',
        {from: accounts[0]})

        assert.ok(Array.isArray(result.logs[0].args._tracks))
    })


})