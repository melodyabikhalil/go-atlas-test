CREATE TABLE offers
(
    id                    bigserial primary key,
    title                 varchar(255)                 not null,
    title_ar              varchar(255),
    description           varchar(255)                not null,
    description_ar        varchar(255),
    terms_url             varchar(255),
    terms_url_ar          varchar(255),
    offer_type            varchar(25)                not null,
    country_id            smallint                    not null,
    weight                smallint      default 0     not null,
    is_active             boolean       default true  not null,
    is_preview_enabled    boolean       default false not null,

    start_date            timestamp                   not null,
    end_date              timestamp                   not null,

    /* BILLING */
    credit_memo_excluded  boolean       default false not null,
    restaurant_max_charge numeric(6, 2),
    hs_share_percentage   numeric(6, 2) default 0     not null,

    /* MARKETING */
    offer_campaign_name   varchar(255)                 not null,
    braze_campaign_id     varchar(50),
    braze_purpose         varchar(255),
    hs_campaign_id        bigint,
    channel               varchar(25),

    created_at            timestamp                   not null,
    updated_at            timestamp                   not null,
    deleted_at            timestamp
);
