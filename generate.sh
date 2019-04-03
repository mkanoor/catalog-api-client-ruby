rm -rf openapi.json
curl https://raw.githubusercontent.com/ManageIQ/catalog-api/master/public/catalog/v1.0.0/openapi.json -o openapi.json
openapi-generator validate -i openapi.json
rm -rf ./lib
rm -rf ./spec
rm -rf ./docs
openapi-generator generate -g ruby -i openapi.json -c client-meta.json -o .
