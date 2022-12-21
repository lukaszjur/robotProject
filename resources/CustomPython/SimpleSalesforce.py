import requests
import json
from simple_salesforce import Salesforce

class SimpleSalesforce():

    def salesforce_authentication(self, sf_username, sf_password, sf_token):
        auth_response = Salesforce(username=sf_username, password=sf_password, security_token=sf_token)
        return auth_response

    def create_lead_record(self, authorization, first_name, last_name, company, status):
        createdLead = authorization.Lead.create({'FirstName': first_name, 'LastName': last_name, 'Company': company, 'Status': status})
        print(createdLead)
        print(createdLead.keys())
        lead_id = createdLead['id']
        return lead_id

    def delete_lead_record(self, authorization, id):
        authorization.Lead.delete(id)