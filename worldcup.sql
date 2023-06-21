--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (108, 2018, 'Final', 4, 2, 1532, 1533);
INSERT INTO public.games VALUES (109, 2018, 'Third Place', 2, 0, 1534, 1535);
INSERT INTO public.games VALUES (110, 2018, 'Semi-Final', 2, 1, 1533, 1535);
INSERT INTO public.games VALUES (111, 2018, 'Semi-Final', 1, 0, 1532, 1534);
INSERT INTO public.games VALUES (112, 2018, 'Quarter-Final', 3, 2, 1533, 1536);
INSERT INTO public.games VALUES (113, 2018, 'Quarter-Final', 2, 0, 1535, 1537);
INSERT INTO public.games VALUES (114, 2018, 'Quarter-Final', 2, 1, 1534, 1538);
INSERT INTO public.games VALUES (115, 2018, 'Quarter-Final', 2, 0, 1532, 1539);
INSERT INTO public.games VALUES (116, 2018, 'Eighth-Final', 2, 1, 1535, 1540);
INSERT INTO public.games VALUES (117, 2018, 'Eighth-Final', 1, 0, 1537, 1541);
INSERT INTO public.games VALUES (118, 2018, 'Eighth-Final', 3, 2, 1534, 1542);
INSERT INTO public.games VALUES (119, 2018, 'Eighth-Final', 2, 0, 1538, 1543);
INSERT INTO public.games VALUES (120, 2018, 'Eighth-Final', 2, 1, 1533, 1544);
INSERT INTO public.games VALUES (121, 2018, 'Eighth-Final', 2, 1, 1536, 1545);
INSERT INTO public.games VALUES (122, 2018, 'Eighth-Final', 2, 1, 1539, 1546);
INSERT INTO public.games VALUES (123, 2018, 'Eighth-Final', 4, 3, 1532, 1547);
INSERT INTO public.games VALUES (124, 2014, 'Final', 1, 0, 1548, 1547);
INSERT INTO public.games VALUES (125, 2014, 'Third Place', 3, 0, 1549, 1538);
INSERT INTO public.games VALUES (126, 2014, 'Semi-Final', 1, 0, 1547, 1549);
INSERT INTO public.games VALUES (127, 2014, 'Semi-Final', 7, 1, 1548, 1538);
INSERT INTO public.games VALUES (128, 2014, 'Quarter-Final', 1, 0, 1549, 1550);
INSERT INTO public.games VALUES (129, 2014, 'Quarter-Final', 1, 0, 1547, 1534);
INSERT INTO public.games VALUES (130, 2014, 'Quarter-Final', 2, 1, 1538, 1540);
INSERT INTO public.games VALUES (131, 2014, 'Quarter-Final', 1, 0, 1548, 1532);
INSERT INTO public.games VALUES (132, 2014, 'Eighth-Final', 2, 1, 1538, 1551);
INSERT INTO public.games VALUES (133, 2014, 'Eighth-Final', 2, 0, 1540, 1539);
INSERT INTO public.games VALUES (134, 2014, 'Eighth-Final', 2, 0, 1532, 1552);
INSERT INTO public.games VALUES (135, 2014, 'Eighth-Final', 2, 1, 1548, 1553);
INSERT INTO public.games VALUES (136, 2014, 'Eighth-Final', 2, 1, 1549, 1543);
INSERT INTO public.games VALUES (137, 2014, 'Eighth-Final', 2, 1, 1550, 1554);
INSERT INTO public.games VALUES (138, 2014, 'Eighth-Final', 1, 0, 1547, 1541);
INSERT INTO public.games VALUES (139, 2014, 'Eighth-Final', 2, 1, 1534, 1555);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1532, 'France');
INSERT INTO public.teams VALUES (1533, 'Croatia');
INSERT INTO public.teams VALUES (1534, 'Belgium');
INSERT INTO public.teams VALUES (1535, 'England');
INSERT INTO public.teams VALUES (1536, 'Russia');
INSERT INTO public.teams VALUES (1537, 'Sweden');
INSERT INTO public.teams VALUES (1538, 'Brazil');
INSERT INTO public.teams VALUES (1539, 'Uruguay');
INSERT INTO public.teams VALUES (1540, 'Colombia');
INSERT INTO public.teams VALUES (1541, 'Switzerland');
INSERT INTO public.teams VALUES (1542, 'Japan');
INSERT INTO public.teams VALUES (1543, 'Mexico');
INSERT INTO public.teams VALUES (1544, 'Denmark');
INSERT INTO public.teams VALUES (1545, 'Spain');
INSERT INTO public.teams VALUES (1546, 'Portugal');
INSERT INTO public.teams VALUES (1547, 'Argentina');
INSERT INTO public.teams VALUES (1548, 'Germany');
INSERT INTO public.teams VALUES (1549, 'Netherlands');
INSERT INTO public.teams VALUES (1550, 'Costa Rica');
INSERT INTO public.teams VALUES (1551, 'Chile');
INSERT INTO public.teams VALUES (1552, 'Nigeria');
INSERT INTO public.teams VALUES (1553, 'Algeria');
INSERT INTO public.teams VALUES (1554, 'Greece');
INSERT INTO public.teams VALUES (1555, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 139, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1555, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

