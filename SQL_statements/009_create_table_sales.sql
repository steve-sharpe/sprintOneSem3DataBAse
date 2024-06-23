CREATE TABLE public.sales
(
    sales_id integer NOT NULL,
    salesperson_id integer NOT NULL,
    customer_id integer NOT NULL,
    sales_date date NOT NULL,
    total_revenue money NOT NULL,
    PRIMARY KEY (sales_id)
);

ALTER TABLE IF EXISTS public.sales
    OWNER to postgres;