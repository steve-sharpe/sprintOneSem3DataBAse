CREATE TABLE public."Sales"
(
    sales_id integer NOT NULL,
    salesperson_id integer NOT NULL,
    contact_id integer NOT NULL,
    sales_date date NOT NULL,
    total_revenue money NOT NULL,
    reward_points_id integer,
    PRIMARY KEY (sales_id)
);

ALTER TABLE IF EXISTS public."Sales"
    OWNER to postgres;