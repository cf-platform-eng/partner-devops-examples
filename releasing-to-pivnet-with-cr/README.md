# Upload a release to PivNet 
This example uses the concourse resource to upload your product to pivnet.
It is based on a sample tile the ISV Dashboard Team uses.


Simply:
  1. modify the metadata.yml and product.json to suit
  1. set PIVNET_TOKEN to contain your org's token, and run our script
     ```
     export PIVNET_TOKEN=<your-token-here>
     ./push-test-tile.sh
     ```