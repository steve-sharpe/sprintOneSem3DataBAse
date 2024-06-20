CREATE TABLE public."Salesperson"
(
    salesperson_id integer NOT NULL,
    salesperson_name character varying(20) NOT NULL,
    contact_id integer NOT NULL,
    PRIMARY KEY (salesperson_id)
);

ALTER TABLE IF EXISTS public."Salesperson"
    OWNER to postgres;