
module.exports = {

  networks: {

    development: {
      host: 'localhost',
      network_id: '*', // Match any network id
      port: 8545,
      gas: 8000000,
      gasPrice: 0x01,
    },
  },

  // Set default mocha options here, use special reporters etc.
  mocha: {
    // timeout: 100000
  },

  // Configure your compilers
  compilers: {
    solc: {
      settings: {
        optimizer: {
          enabled: true,
        },
      },
    },
  },
}
