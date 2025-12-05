with campaigns as (

    select * from {{ ref('campaigns') }}

),

final as (

    select

        id || '-' || seq as campaign_key,
        id,
        seq,
        name,
        tier_name,
        owner

    from campaigns

)

select * from final
