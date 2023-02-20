param location string = resourceGroup().location

@minLength(3)
@maxLength(24)
param name string = 'jack23129434'

@allowed(['Standard_LRS', 'Standard_ZRS'])
param type string = 'Standard_LRS'


module storageAccount './storageAccount.bicep' = {
  name: 'stgacct'
  params: {
    location: location
    name: name
    type: type
  }
}

