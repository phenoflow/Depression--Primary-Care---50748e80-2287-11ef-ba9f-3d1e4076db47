# John, A., Marchant, A. L., Fone, D. L., McGregor, J. I., Dennis, M. S., Tan, J. O. A., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"d7d3.","system":"readv2"},{"code":"d71d.","system":"readv2"},{"code":"d76x.","system":"readv2"},{"code":"d762.","system":"readv2"},{"code":"d734.","system":"readv2"},{"code":"d75y.","system":"readv2"},{"code":"da7w.","system":"readv2"},{"code":"d73t.","system":"readv2"},{"code":"d7h1.","system":"readv2"},{"code":"da7Y.","system":"readv2"},{"code":"d73v.","system":"readv2"},{"code":"d7c8.","system":"readv2"},{"code":"d732.","system":"readv2"},{"code":"da7v.","system":"readv2"},{"code":"d73x.","system":"readv2"},{"code":"d7h5.","system":"readv2"},{"code":"daC5.","system":"readv2"},{"code":"daC6.","system":"readv2"},{"code":"d7cy.","system":"readv2"},{"code":"d734.","system":"readv2"},{"code":"d71d.","system":"readv2"},{"code":"d75y.","system":"readv2"},{"code":"d7c8.","system":"readv2"},{"code":"da7w.","system":"readv2"},{"code":"d7h5.","system":"readv2"},{"code":"daC6.","system":"readv2"},{"code":"d762.","system":"readv2"},{"code":"da7v.","system":"readv2"},{"code":"d73x.","system":"readv2"},{"code":"d73t.","system":"readv2"},{"code":"d732.","system":"readv2"},{"code":"d7h1.","system":"readv2"},{"code":"d7cy.","system":"readv2"},{"code":"d73v.","system":"readv2"},{"code":"da7Y.","system":"readv2"},{"code":"d76x.","system":"readv2"},{"code":"daC5.","system":"readv2"},{"code":"d7d3.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('depression--primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["depression--primary-care-225mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["depression--primary-care-225mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["depression--primary-care-225mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
