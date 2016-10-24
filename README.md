# Chilean_Education

This project requires me to:
  1. Download pdfs with public information of every voter in Chile located at http://www.servel.cl/padronAuditado.html. (link now disabled...)
  2. Convert pdfs into text documents
  3. Create a CSV file with the information for each voter in Chile
  
I did this by:
  1. Manually downloading the pdf files. There were about 300 pdfs. There was a pdf for each comuna in Chile. It was easier for me to download
    the pdfs manually than it was to create code to do it for me. I was really lucky. The infromation was in pdf format while I was
    working on this project. Now it seems you have to input the ruts for each individual voter at https://consulta.servel.cl/
  2. I used R to convert the pdfs to text files. The R package used to convert the pdfs to text provided a much cleaner conversion
    than its Ruby equivalent. However, the conversion was still pretty difficult to parse.
  3. I used Ruby to create the CSV file. Ruby is pretty awesome when it comes to working with strings. 
