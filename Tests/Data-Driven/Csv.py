import csv

def read_csv_file(filename):
    data = []
    with open(filename, 'r') as csvfile:
        next(csvfile) # skip header row
        reader = csv.reader(csvfile)
        for row in reader:
            data.append(row)
    return data