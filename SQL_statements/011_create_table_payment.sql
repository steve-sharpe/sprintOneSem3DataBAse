CREATE TABLE public.payment
(
    payment_id integer NOT NULL,
    sales_id integer NOT NULL,
    payment_date date NOT NULL,
    payment_amount money NOT NULL,
    payment_method character varying(10) NOT NULL,
    PRIMARY KEY (payment_id)
);

ALTER TABLE IF EXISTS public.payment
    OWNER to postgres;