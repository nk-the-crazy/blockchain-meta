package io.hs.bex.common.model;


public enum DigitalCurrencyType
{
    UNDEFINED( 0, "UNDEFINED" ),
    BTC( 100, "Bitcoin" ),
    BCH( 200, "Bitcoin-Cash" ),
    ETH( 300 ,"Ethereum" );
    
    private short id = 0;

    private String displayName;
    
    DigitalCurrencyType( int id, String displayName )
    {
        this.id = (short) id;
        this.displayName = displayName;
    }
    
    public static DigitalCurrencyType getByCode( String code )
    {
        for( DigitalCurrencyType dc:DigitalCurrencyType.values() ) 
        {
            if(dc.name().toLowerCase().equals( code.toLowerCase() )) 
            {
                return dc;
            }
        }
        
        return null;
    }

    public short getId()
    {
        return id;
    }
    
    public String getCode()
    {
        return name().toUpperCase();
    }

    public String getDisplayName()
    {
        return displayName;
    }
    
}
