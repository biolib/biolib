
/* This typemap for type** takes an array of Ruby values and turns it into a
 * C matrix, based on the number of rows and cols provided. The matrix can be
 * modified ans is returned from the method as an array again.  Note the number
 * of columns and rows are hard coded as arg1 and arg2 type arguments,
 * representing the SWIG internal name, rather than the parameter.  for a more
 * generic approach a helper data structure would be more appropriate. What
 * gives, it works.
 *
 * Example:
 *   values = [1.1,1.2,2.1,2.2,3.1,3.2]
 *   result = Biolib::Example.name_change(2,3,values)
 *   raise "Test failed with value #{result}" if result[3] != 4
 */

%define BIOLIB_INMATRIXASARRAY(type,colsarg,rowsarg,name)
  %typemap(in) type **name {
    /* BIOLIB_INMATRIXASARRAY %typemap(in) type **name */
    int cols = colsarg;
    int rows = rowsarg; 
    int i, row;
    int len;
    type *base;
    type **dptr;

    if (!rb_obj_is_kind_of($input,rb_cArray))
      rb_raise(rb_eArgError, "BIOLIB_INMATRIXASARRAY expected Array of values for type **$1_name");
    len = rows * cols;
    /* len = RARRAY($input)->len; */
    dptr = (type **)malloc(rows*sizeof(type *));
    base = (type *)malloc(len*sizeof(type));
    for (i=0; i<len; i++)
      base[i] = rb_num2dbl(RARRAY($input)->ptr[i]);
    for (row=0; row<rows; row++)
      dptr[row] = &base[row*cols];
    $1 = dptr;
  }


  %typemap(freearg) type **name {
    /* BIOLIB_INMATRIXASARRAY %typemap(freearg) type **name */
    if ($1) {
      free(*$1);
      free($1);
    }
  }
%enddef

%define BIOLIB_INOUTMATRIXASARRAY(type,colsarg,rowsarg,name)
  BIOLIB_INMATRIXASARRAY(type,colsarg,rowsarg,name);

  %typemap(argout) type **name {
    /* BIOLIB_INOUTMATRIXASARRAY %typemap(argout) type **name */
    int i,j;
    int cols = colsarg;
    int rows = rowsarg; 

    /* example: printf("%f,%f",$1[0][0],$1[1][0]); */
    $result = rb_ary_new();
    for (i=0; i<rows; i++)
      for (j=0; j<cols; j++)
        rb_ary_push($result,rb_float_new($1[i][j]));
  }
%enddef
