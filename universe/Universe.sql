--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    description text,
    is_big boolean,
    age_in_million_years integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: meteor; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    age_in_million_years integer,
    moon_id integer
);


ALTER TABLE public.meteor OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO freecodecamp;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    description text,
    age_in_million_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    description text,
    has_life boolean,
    age_in_million_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    description text,
    distance_from_earth numeric(10,2),
    age_in_million_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milkway', 2552, 'abeautiful one', true, 100);
INSERT INTO public.galaxy VALUES (3, 'mil', 25552, 'abeautifue', true, 1300);
INSERT INTO public.galaxy VALUES (4, 'hooney', 25552, 'abeautifue', true, 4300);
INSERT INTO public.galaxy VALUES (5, 'flower', 552, 'abeautsifue', true, 430);
INSERT INTO public.galaxy VALUES (6, 'thumb', 5352, 'absseautsifue', true, 30);
INSERT INTO public.galaxy VALUES (7, 'car', 5352, 'absseassutsifue', true, 220);


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.meteor VALUES (1, 'ozai', 11, 234, 3);
INSERT INTO public.meteor VALUES (2, 'ozai', 11, 2344, 3);
INSERT INTO public.meteor VALUES (3, 'ozai', 11, 23434, 3);
INSERT INTO public.meteor VALUES (4, 'ozai', 11, 2334, 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon', 122, 'earth satelite', 11, 2);
INSERT INTO public.moon VALUES (3, 'moon', 122, 'earth satelite', 111, 2);
INSERT INTO public.moon VALUES (4, 'moon', 122, 'earth satelite', 31, 2);
INSERT INTO public.moon VALUES (5, 'moon', 122, 'earth satelite', 341, 2);
INSERT INTO public.moon VALUES (6, 'moon', 122, 'earth satelite', 3451, 2);
INSERT INTO public.moon VALUES (7, 'moon', 122, 'earth satelite', 34651, 2);
INSERT INTO public.moon VALUES (8, 'moon', 122, 'earth satelite', 347651, 2);
INSERT INTO public.moon VALUES (9, 'moon', 122, 'earth satelite', 34761, 2);
INSERT INTO public.moon VALUES (11, 'moon', 122, 'earth satelite', 34, 2);
INSERT INTO public.moon VALUES (12, 'moon', 122, 'earth satelite', 374, 2);
INSERT INTO public.moon VALUES (13, 'moon', 122, 'earth satelite', 37488, 2);
INSERT INTO public.moon VALUES (14, 'moon', 122, 'earth satelite', 387488, 2);
INSERT INTO public.moon VALUES (15, 'moon', 122, 'earth satelite', 38748, 2);
INSERT INTO public.moon VALUES (16, 'moon', 122, 'earth satelite', 398748, 2);
INSERT INTO public.moon VALUES (17, 'moon', 122, 'earth satelite', 3098748, 2);
INSERT INTO public.moon VALUES (19, 'moon', 122, 'earth satelite', 3987948, 2);
INSERT INTO public.moon VALUES (20, 'moon', 122, 'earth satelite', 39879048, 2);
INSERT INTO public.moon VALUES (21, 'moon', 122, 'earth satelite', 398790948, 2);
INSERT INTO public.moon VALUES (22, 'moon', 122, 'earth satelite', 398790908, 2);
INSERT INTO public.moon VALUES (23, 'moon', 122, 'earth satelite', 39879090, 2);
INSERT INTO public.moon VALUES (24, 'moon', 122, 'earth satelite', 3987900, 2);
INSERT INTO public.moon VALUES (25, 'moon', 122, 'earth satelite', 398790, 2);
INSERT INTO public.moon VALUES (26, 'moon', 122, 'earth satelite', 39879, 2);
INSERT INTO public.moon VALUES (27, 'moon', 122, 'earth satelite', 3987, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'earth', 12, 'earthss', true, 11, 1);
INSERT INTO public.planet VALUES (3, 'earth', 12, 'earthss', true, 121, 1);
INSERT INTO public.planet VALUES (4, 'earth', 12, 'earthss', true, 131, 1);
INSERT INTO public.planet VALUES (5, 'earth', 12, 'earthss', true, 1311, 1);
INSERT INTO public.planet VALUES (6, 'earth', 12, 'earthss', true, 13121, 1);
INSERT INTO public.planet VALUES (7, 'earth', 12, 'earthss', true, 21, 1);
INSERT INTO public.planet VALUES (8, 'earth', 12, 'earthss', true, 241, 1);
INSERT INTO public.planet VALUES (10, 'earth', 12, 'earthss', true, 216, 1);
INSERT INTO public.planet VALUES (11, 'earth', 12, 'earthss', true, 2167, 1);
INSERT INTO public.planet VALUES (12, 'earth', 12, 'earthss', true, 21687, 1);
INSERT INTO public.planet VALUES (13, 'earth', 12, 'earthss', true, 2197, 1);
INSERT INTO public.planet VALUES (14, 'earth', 12, 'earthss', true, 7197, 1);
INSERT INTO public.planet VALUES (15, 'earth', 12, 'earthss', true, 7897, 1);
INSERT INTO public.planet VALUES (16, 'earth', 12, 'earthss', true, 7899, 1);
INSERT INTO public.planet VALUES (17, 'earth', 12, 'earthss', true, 7499, 1);
INSERT INTO public.planet VALUES (18, 'earth', 12, 'earthss', true, 7299, 1);
INSERT INTO public.planet VALUES (19, 'earth', 12, 'earthss', true, 7239, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 122, 'blu planet', 1222.00, 874, 1);
INSERT INTO public.star VALUES (3, 'sun', 122, 'blu planet', 1222.00, 8764, 1);
INSERT INTO public.star VALUES (4, 'sun', 122, 'blu planet', 1222.00, 87664, 1);
INSERT INTO public.star VALUES (5, 'sun', 122, 'blu planet', 1222.00, 876564, 1);
INSERT INTO public.star VALUES (6, 'sun', 122, 'blu planet', 1222.00, 84, 1);
INSERT INTO public.star VALUES (7, 'sun', 122, 'blu planet', 1222.00, 814, 1);
INSERT INTO public.star VALUES (8, 'sun', 122, 'blu planet', 1222.00, 8124, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 19, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: meteor meteor_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


--
-- Name: moon moon_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_age_in_million_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_million_years_key UNIQUE (age_in_million_years);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: meteor meteor_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

