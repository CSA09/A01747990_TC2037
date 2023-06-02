# Resaltador de sintaxis
# Carlos Soto Alarcón - A01747990

defmodule RS do

  def highlight_syntax(file_path, output_path) do
    data = file_path # Variable that stores the python file
    |> File.stream!() # Reads the file stored in data at returns is as a stream
    |> Enum.map(&highlight_line/1) # Executes highlight_line funtion to the file line by line
    |> Enum.join("\n") # Formats data so there are line breaks between every line

    File.write(output_path, html_doc(data, output_path)) # Writes html file calling html_doc function
  end

  def highlight_line(data) do
    keywords = Regex.scan(~r/\b(and|as|assert|break|class|continue|def|del|elif|else|except|finally|for|from|global|if|import|in|is|lambda|nonlocal|not|or|pass|raise|return|try|while|with|yield)\b/, data)
    operators = Regex.scan(~r/\+|-|\*|\/|%|==|!=|>|<|>=|<=|=|\+=|-=|\*=|\/=|%=|\*\*=/, data)
    literals = Regex.scan(~r/(\d+|\d+\.\d*|\.\d+|".*?"|'.*?')/, data)
    comments = Regex.scan(~r/#.*/, data)
    identifiers = Regex.scan(~r/[a-zA-Z_][a-zA-Z0-9_]*/, data)
    delimiter = Regex.scan(~r/[()\[\]{}:;,.]/, data)
    space = Regex.scan(~r/s/, data)

    highlighted_line = data
    |> highlight_lex(keywords, "keywords")
    |> highlight_lex(identifiers, "identifier")
    |> highlight_lex(operators, "operator")
    |> highlight_lex(literals, "literal")
    |> highlight_lex(comments, "comment")
    |> highlight_lex(delimiter, "delimiter")
    |> highlight_lex(space, "space")

  end

  def highlight_lex(data, lexeme) do
    Enum.reduce(lexemes, data, fn {lexeme, _}, acc ->
      String.replace(acc, lexeme, "<span class=\"#{lexeme}\"></span>")
    end)
  end

  def html_doc(data, output_path) do
    html = """
    <html lang="en">
    <head>
        <link rel="stylesheet" href="../Elixir/RS_css.css">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>

    </body>
    </html>
    """

  end


end

RS.highlight_syntax("RS_python.py", "RS_html.html")
