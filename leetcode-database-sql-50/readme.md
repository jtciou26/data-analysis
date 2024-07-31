# SQL 50

Basic to intermediate SQL topics. 50 essential SQL questions. Best for 1 month of prep time.

https://leetcode.com/studyplan/top-sql-50/


### misc.

1. Get all question names from browser's console

```
var x = document.querySelectorAll('.truncate');
var questionNames = [];

for (var i = 3; i < x.length && questionNames.length < 50; i++) {
    questionNames.push(x[i].innerText);
}

console.log(JSON.stringify(questionNames));

```

2. Create sql files for each question name using Python
'''
import os

# Replace this with the actual output from the console
question_names = [
    ...
]

# Ensure the directory exists
output_dir = "leetcode_sql_files"
os.makedirs(output_dir, exist_ok=True)

# Create .sql files for each question name
for name in question_names:
    safe_name = name.replace(" ", "_").replace("/", "_")
    file_path = os.path.join(output_dir, f"{safe_name}.sql")
    
print(f"Created {len(question_names)} SQL files in '{output_dir}' directory.")

'''