# John, A., Marchant, A. L., Fone, D. L., McGregor, J. I., Dennis, M. S., Tan, J. O. A., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"daB3.","system":"readv2"},{"code":"d7e7.","system":"readv2"},{"code":"daB6.","system":"readv2"},{"code":"da82.","system":"readv2"},{"code":"daB4.","system":"readv2"},{"code":"d771.","system":"readv2"},{"code":"daB5.","system":"readv2"},{"code":"daB7.","system":"readv2"},{"code":"d7d4.","system":"readv2"},{"code":"d7ax.","system":"readv2"},{"code":"d7aw.","system":"readv2"},{"code":"da34.","system":"readv2"},{"code":"d7e6.","system":"readv2"},{"code":"d7ay.","system":"readv2"},{"code":"da81.","system":"readv2"},{"code":"daB8.","system":"readv2"},{"code":"d73z.","system":"readv2"},{"code":"da85.","system":"readv2"},{"code":"da4E.","system":"readv2"},{"code":"da32.","system":"readv2"},{"code":"da32.","system":"readv2"},{"code":"daB7.","system":"readv2"},{"code":"da4E.","system":"readv2"},{"code":"d7d4.","system":"readv2"},{"code":"d7ay.","system":"readv2"},{"code":"daB3.","system":"readv2"},{"code":"daB8.","system":"readv2"},{"code":"daB5.","system":"readv2"},{"code":"d7e7.","system":"readv2"},{"code":"d7aw.","system":"readv2"},{"code":"d73z.","system":"readv2"},{"code":"daB4.","system":"readv2"},{"code":"d7ax.","system":"readv2"},{"code":"d771.","system":"readv2"},{"code":"daB6.","system":"readv2"},{"code":"d7e6.","system":"readv2"},{"code":"da81.","system":"readv2"},{"code":"da82.","system":"readv2"},{"code":"da34.","system":"readv2"},{"code":"da85.","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('depression--primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["depression--primary-care-tabx28---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["depression--primary-care-tabx28---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["depression--primary-care-tabx28---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
