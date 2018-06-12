function Map()
{
    var arr = [];

    this.get = get;
    this.has = has;
    this.set = set;

    function get( key )
    {
        for (var i = 0; i < arr.length; ++i)
        {
            var kv = arr[ i ];
            if (kv[ 0 ] === key)
                return kv[ 1 ];
        }
    }

    function has( key )
    {
        for (var i = 0; i < arr.length; ++i)
        {
            var kv = arr[ i ];
            if (kv[ 0 ] === key)
                return true;
        }
    }
    
    function set( key, value )
    {
        for (var i = 0; i < arr.length; ++i)
        {
            var kv = arr[ i ];
            if (kv[ 0 ] === key)
                break;
        }
        arr[ i ] = [ key, value ];
        return this;
    }
}
