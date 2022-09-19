import React from "react";
import { styled } from "@mui/material/styles";
import Container from "@mui/material/Container";
import Typography from "@mui/material/Typography";
import Box from "@mui/material/Box";
import ListAirport from "./ListAirport";

const Page = styled(Container)(({ theme }) => ({
  width: '100%',
  maxWidth: 1280,
  margin: '10px',
  padding: '0 !important',
  backgroundColor: '#FFF',
  [theme.breakpoints.between(240, 480)]: {
    margin: '50px 20px',
  },
  [theme.breakpoints.between(481, 720)]: {
    margin: '120px 60px',
  },
  [theme.breakpoints.between(721, 1280)]: {
    margin: '90px 200px',
  },
  [theme.breakpoints.up('lg')]: {
    margin: '90px 200px',
  },
}));

const App = () => {
  return (
    <Page fixed>
      <Typography variant="h4" component="h1" gutterBottom>
        AzuloEval Airport
      </Typography>
      <ListAirport />
    </Page>
  );
};

export default App;
