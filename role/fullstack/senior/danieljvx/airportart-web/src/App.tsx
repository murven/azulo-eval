import React from "react";
import Container from "@mui/material/Container";
import Typography from "@mui/material/Typography";
import Box from "@mui/material/Box";
import ListAirport from "./ListAirport";

const App = () => {
  return (
    <Container fixed>
      <Box sx={{ my: 4 }}>
        <Typography variant="h4" component="h1" gutterBottom>
          AzuloEval Airport
        </Typography>
        <ListAirport />
      </Box>
    </Container>
  );
};

export default App;
