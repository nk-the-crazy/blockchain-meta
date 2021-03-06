# Blockchain Meta

True decentralization requires applications to work with decentralized data providers so that availability(uptime) of a specific data provider has no impact on the functioning of the decentralized application (ex: decentralized crypto currency wallet).

As a result, directly relying on a third-party API provider is not really an option for a trully decentralized application. At the same time, in some cases the usability of the application to a large extent depends on the availabilty of such information.

As one of the possible solutions to this issue Horizontal Systems runs an IPFS node (decentralized storage) that collects non-private meta data (ex: BTC to USD exchange rate) and stores all that data in a decentralized storage that is available to  DApps (including the BANK Wallet app by Horizontal Systems). Should there be an issue with any of the data providers the application will still continue functioning without interruption.

The purpose of this repository is to provide tools for collecting much needed meta-data related to crypto currencies (like exchange rates) and subsequently serve that data to DApps from on a decentralized storage infrastructure. The data stored on IPFS is available to anyone interested, including the DApps (decentralized applications). 

Requirements:

- [Maven](http://maven.apache.org/) is used as project management tool
- JDK 8 or higher to build projects; JRE should be enough on target environments to run project artifacts

The package comes with several modules, each responsible for a particular part of the infrustructure needed for collecting the data required by DApps and storing that data in a decentralized manner.

## Blockchain Nodes (bex-blocknode)

This module allows monitoring of full blockchain nodes. At the moment it supports Bitcoin and Bitcoin Cash blockchains.

The module requires connection to the existing full node (via config file) and allows to manages node network connections, data synchronization parameters and the node status.

Example: https://bex.horizontalsystems.xyz/node-list
        
## Blockchain Manager (bex-blockchain)

This module works with the **blockchain node** module above to parse and later store required blockchain data on decentralized storage medium. 

That data can be pretty much antyhing the can be potentially derived from the given blockchain, including but not limited to:

- block information
- transaction status
- transaction details
- mempool data
- transaction fee
- ...

## Data Storage Module (bex-datastore)

Used by other modules to manage data (mainly for store/retrieve operations) on various supported data storage options. 

For the time being the module support mainly IPFS and FileSystem. The support for storing data in IPLD and other databases will be added in the future.

For illustration purposes you're welcome to review the [public IPFS Node](https://ipfs.horizontalsystems.xyz/ipns/Qmd4Gv2YVPqs6dmSy1XEq7pQRSgLihqYKL2JjK7DMUFPVz/io-hs/data/docs/block-explorer/index.html) by Horizontal Systems.

At the time being following information can be requested from Horizontal Systems public IPFS Node.

- Real-time and historical [fiat-crypto exchange rates](https://ipfs.horizontalsystems.xyz/ipns/Qmd4Gv2YVPqs6dmSy1XEq7pQRSgLihqYKL2JjK7DMUFPVz/io-hs/data/docs/block-explorer/bex-currency.html)
- [Real-time transaction fee estimator for Bitcoin blockchain](https://ipfs.horizontalsystems.xyz/ipns/Qmd4Gv2YVPqs6dmSy1XEq7pQRSgLihqYKL2JjK7DMUFPVz/io-hs/data/docs/block-explorer/bex-blockchain-fee.html)
 
## Fiat Currency Module (bex-currency)

Allows to store and interact with essential data relevant to fiat currencies like exchange-rates and other info. Such information is often critical for any type of crypto currency applications.

Storing Data:

Currency data obtained from public data providers and stored on decentralized storage medium like IPFS from where it can be obtained on demand, from anywhere.

Data Sources:

- Real-time crypto to USD exchange rates (obtained via https://www.cryptocompare.com)
- Real-time crypto to EUR, RUB, AUD, CAD, CHF, CNY, GBP, JPY exchange rates are calculated by converting USD rate to the other currency (via https://exchangeratesapi.io)

This module uses above mentioned **Data Storage** module to store the obtained exchange rate information above to an IPFS node, which is also available for public use. 

It essentially enables anyone to get latest crypto to fiat exchange rates (with up-to 3 minute ineterval) as well as lookup historical exchange rates.

Reading Data:

Exchange rate availability periods:

- Average Daily Exchange Rate for the period Jan 1st, 2015 - Nov 23rd, 2018
- Up to the minute rates for the period after Nov 23rd, 2018

Refer to the [documentation](https://ipfs.horizontalsystems.xyz/ipns/Qmd4Gv2YVPqs6dmSy1XEq7pQRSgLihqYKL2JjK7DMUFPVz/io-hs/data/docs/block-explorer/bex-currency.html) for instructions about reading the stored currency data from IPFS.
  
## Other Modules
  
- **bex-common**: Common libraries, utilities, tools used by other modules.   
- **bex-web**: The web interface panel (UI Control Panel) for Block Explorer.
