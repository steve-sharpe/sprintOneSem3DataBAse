CREATE TABLE public.supplier
(
    supplier_id integer NOT NULL,
    supplier_name character varying(50) NOT NULL,
    contact_id integer NOT NULL,
    PRIMARY KEY (supplier_id)
);

ALTER TABLE IF EXISTS public.supplier
    OWNER to postgres;