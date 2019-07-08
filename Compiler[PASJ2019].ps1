Param ( $file_name)
# pay attention to take file name. ".\<file name>" acts bad.
$tex_file_name=$file_name + ".tex"
$dvi_file_name=$file_name + ".dvi"
$pdf_file_name=$file_name + ".pdf"

echo "File name is : $tex_file_name , $dvi_file_name"
uplatex $tex_file_name
echo "***  Done platex command  ***"
ls | grep $tex_file_name
echo "***  Complete making dvi_text_file  ***"
dvipdfmx $dvi_file_name
echo "***  Done dvipdfmx command  ***"
ls | grep $tex_file_name
echo "*** Complete making pdf_text_file  ***"
#Invoke-Item $pdf_file_name
texworks $pdf_file_name