# Upload a release to PivNet 
This example uses the [pivnet concourse resource](https://github.com/pivotal-cf/pivnet-resource) to upload your product(tile) to pivnet.

This example does not use concourse, so it could be useful from
other tools such as Jenkins. 

It is based on a sample tile the Pivotal ISV Dashboard Team uses.

### To Use:
  1. modify the metadata.yml and product.json to suit
  1. set PIVNET_TOKEN to contain your org's token, and run our script
     ```
     export PIVNET_TOKEN=<your-token-here>
     ./push-test-tile.sh
     ```

### Hints for creating the files

- product.json. See the "out: Upload a product to Pivotal Network" section's parameters of the [pivnet-resource Readme](https://github.com/pivotal-cf/pivnet-resource).
- metadata.yml. Take a look at the [Metadata Readme](https://github.com/pivotal-cf/pivnet-resource/tree/master/metadata) for all the options.
- .pivotal product file.  One way to create this file is via 
the [Tile Generator](https://docs.pivotal.io/tiledev/2-1/tile-generator.html)  Other methods are acceptable also; this is just a binary file to the pivnet upload process. 

### Dependencies
- jq.  The script uses [jq](https://stedolan.github.io/jq/) to replace the api_token in product.json with your PIVNET_TOKEN environment variable.
- docker.  The script uses the [docker cli](https://www.docker.com/products/docker-desktop) to run the pivnet-resource's out command. 
