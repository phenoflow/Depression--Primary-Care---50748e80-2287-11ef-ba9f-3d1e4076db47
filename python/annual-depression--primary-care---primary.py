# John, A., Marchant, A. L., Fone, D. L., McGregor, J. I., Dennis, M. S., Tan, J. O. A., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"9H90","system":"readv2"},{"code":"9H90","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('depression--primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["annual-depression--primary-care---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["annual-depression--primary-care---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["annual-depression--primary-care---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
