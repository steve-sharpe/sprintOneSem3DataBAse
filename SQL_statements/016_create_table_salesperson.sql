CREATE TABLE public.salesperson
(
    salesperson_id integer NOT NULL,
    salesperson_name character varying(25) NOT NULL,
    contact_id integer NOT NULL,
    PRIMARY KEY (salesperson_id)
);

ALTER TABLE IF EXISTS public.salesperson
    OWNER to postgres;