# Log File Parsing Using Shell Script

## Problem Statement

Read sample log file present with the repository i.e **web-logs-raw** and find those lines that contain the word **sample heroku/router**. Read the value of **request_id=** from the line and print it also read the value of **fwd=** and if it is **MASKED** print **[M]** beside the value of **request_id=**.

## Smple Output

```
b19a87a1-1bbb-4e67-b207-bd9f23d46afa
910b07d1-3f71-4347-a1a7-bfa20384ef65
097bf65e-e189-4f9f-9dfb-4758cff411b2
d48278c2-5731-464e-be38-ab9ad84ac4a8
8bb2413c-3c67-4180-8091-000313b8d9ca [M]
10f93da3-2753-48a3-9485-857a93d8a88a [M]
```
