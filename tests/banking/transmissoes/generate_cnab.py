import lorem


def generate_text_content():
    return lorem.paragraph()

def generate_csv_content():
    return "Name, Age\nJohn, 30\nJane, 25\nDoe, 35\n"

def generate_json_content():
    return '{"name": "John", "age": 30}\n{"name": "Jane", "age": 25}\n{"name": "Doe", "age": 35}\n'
