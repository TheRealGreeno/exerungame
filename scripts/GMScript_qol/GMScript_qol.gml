function approach(arg0, arg1, arg2)
{
    if (arg0 < arg1)
    {
        arg0 += arg2;
        if (arg0 > arg1)
            return arg1;
    }
    if (arg0 > arg1)
    {
        arg0 -= arg2;
        if (arg0 < arg1)
            return arg1;
    }
    return arg0;
}

function instance_create(arg0, arg1, arg2)
{
    return instance_create_depth(arg0, arg1, depth, arg2);
}
