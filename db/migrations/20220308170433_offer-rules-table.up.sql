CREATE TABLE offer_rules
(
    id         bigserial primary key,
    offer_id   bigint,
    rule_type  varchar(50) not null,
    rule_data  jsonb default '{}'::jsonb,

    legacy_id  varchar(50)

    created_at timestamp   not null,
    updated_at timestamp   not null,
    deleted_at timestamp
);
