import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.setGlobalPrefix('v1', { exclude: ['/'] });
  app.enableCors();
  const config = new DocumentBuilder()
    .setTitle('Azulo Airport Api')
    .setDescription('Api for technical test.')
    .setVersion('1.0')
    .build();
  const document = SwaggerModule.createDocument(app, config);
  SwaggerModule.setup('doc', app, document, {
    customSiteTitle: 'Azulo Airport Api Documentation',
    customfavIcon:
      'https://images.squarespace-cdn.com/content/v1/627ad6d3c792b318dfe5fd33/2f23e5b2-bfa1-456b-92e1-b720b4ff0d0c/favicon.ico?format=100w',
  });
  await app.listen(8000);
}
bootstrap();
