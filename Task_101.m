  A = input("Enter Matrix A: ");
  B = input("Enter Matrix B: ");

  max_ele_A = max(max(A));
  fprintf("Max Value of A: %d  \n",max_ele_A) ;
  row_num = rows(B);
  col_num = columns(A) ;
  if row_num == col_num
    result_mat = A*B ;
    fprintf("The result is :\n");
    disp(result_mat);
  else
    fprintf("Matrix multiplication is not possible.\n");
  end


