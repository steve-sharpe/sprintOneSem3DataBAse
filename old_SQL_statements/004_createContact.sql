CREATE TABLE public."Contact"
(
    contact_id integer NOT NULL,
    contact_name character varying(50) NOT NULL,
    street character varying(50) NOT NULL,
    city character varying(30) NOT NULL,
    province character varying(2) NOT NULL,
    postal_code character varying(6) NOT NULL,
    email_address character varying(50) NOT NULL,
    phone_number numeric(10) NOT NULL,
    PRIMARY KEY (contact_id)
);

ALTER TABLE IF EXISTS public."Contact"
    OWNER to postgres;