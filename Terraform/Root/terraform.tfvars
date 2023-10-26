###Prefix
prefix = "eiadev"

###location
location ="Central US"

###Environment
environment = "nonprod"

###Ask Id
ask_id = "AIDE_0077364"

###Project Name
projectname = "Advocacy"



### service_details
subnet_details = {
    common= {
        address_prefixes= ["10.0.1.0/24"] 
       service_endpoints = ["Microsoft.AzureActiveDirectory", "Microsoft.AzureCosmosDB", "Microsoft.Storage"]     
    }
}




