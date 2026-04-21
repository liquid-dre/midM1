import csv                                                                                                                                                   
# Script to convert customers.tsv into SQL insert statements for our Customer, IndividualCustomer, and BusinessCustomer tables.                
# To run it in bash: python3 convert_customers.py > customers.sql                                                                                                         

with open("customers.tsv") as f:                                                                                                                   
    reader = csv.DictReader(f, delimiter='\t')
    print("USE team15_database;\n")                                                                                                                          
    for row in reader:                                                                                                                                       
        email = f"'{row['email']}'" if row['email'] else 'NULL'
        print(f"INSERT INTO Customer (phone_number, email, state, city, street, postal_code) VALUES "                                                        
            f"('{row['phone']}', {email}, '{row['state']}', '{row['city']}', "                                                                             
            f"'{row['street']}', '{row['postal']}');")                                                                                                     
        if row['customer_type'] == 'person':                                                                                                                 
            print(f"INSERT INTO IndividualCustomer (customer_id, ssn, first_name, last_name) VALUES "                                                        
                f"(LAST_INSERT_ID(), '{row['person_ssn']}', '{row['person_first']}', '{row['person_last']}');")
        else:                                                                                                                                                
            print(f"INSERT INTO BusinessCustomer (customer_id, tax_id, business_name, "
                f"primary_contact_title, primary_contact_first_name, primary_contact_last_name) VALUES "                                                   
                f"(LAST_INSERT_ID(), '{row['biz_tax_id']}', '{row['biz_name']}', "                                                                         
                f"'{row['biz_contact_title']}', '{row['biz_contact_first']}', '{row['biz_contact_last']}');")
        print()                                                                                                                                              
                  