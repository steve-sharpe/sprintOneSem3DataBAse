CREATE TABLE public.contact
(
    contact_id integer NOT NULL,
    contact_name character varying(50) NOT NULL,
    street character varying(25) NOT NULL,
    city character varying(25) NOT NULL,
    province character varying(2) NOT NULL,
    postal_code character varying(6) NOT NULL,
    email character varying(50) NOT NULL,
    phone numeric(10) NOT NULL,
    PRIMARY KEY (contact_id)
);

ALTER TABLE IF EXISTS public.contact
    OWNER to postgres;