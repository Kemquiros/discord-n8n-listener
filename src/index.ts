import { Client, GatewayIntentBits } from 'discord.js';
import dotenv from 'dotenv';
import { registerEventListeners } from './listener';

dotenv.config();

const client = new Client({
  intents: [GatewayIntentBits.Guilds, GatewayIntentBits.GuildMembers],
});

client.once('ready', () => {
  console.log(`✅ Bot is online as ${client.user?.tag}`);
});

registerEventListeners(client);

client.login(process.env.DISCORD_TOKEN);