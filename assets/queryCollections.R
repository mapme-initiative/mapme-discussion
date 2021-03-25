library(openeo)
library(magrittr)
library(dplyr)
library(tibble)
creodias_url = "https://openeo.creo.vito.be" # production ready
vito_url = "https://openeo.vito.be" # production ready
eodc_url = "https://openeo.eodc.eu" 
eurac_url = "https://openeo.eurac.edu" 
gee_url = "https://earthengine.openeo.org"
mundialis_url = "https://openeo.mundialis.de/api" 
sentinelhub_url = "https://e3oind87n9.execute-api.eu-central-1.amazonaws.com/production"

# check available collections
urls = c(creodias = creodias_url, 
         vito = vito_url, 
         eodc = eodc_url, 
         eurac = eurac_url, 
         gee = gee_url, 
         mundialis = mundialis_url, 
         sentinelhub = sentinelhub_url)
available_collections = lapply(urls, function(url) connect(url) %>% list_collections())
names(available_collections) = names(urls)
saveRDS(available_collections, "openeo-collections.rds")

