import { Client, GuildMember } from 'discord.js';
import axios from 'axios';

export function registerEventListeners(client: Client) {
  client.on('guildMemberAdd', async (member: GuildMember) => {
    const webhookUrl = process.env.WEBHOOK_URL;
    if (!webhookUrl) {
      console.error('❌ WEBHOOK_URL not set');
      return;
    }

    try {
      console.log(`📥 New member joined: ${member.user.tag}`);

      await axios.post(webhookUrl, {
        displayName: member.user.displayName,
        userID: member.id,
        joinedTimestamp: member.joinedAt,
      });

      console.log(`✅ Notification sent for ${member.user.tag}`);
    } catch (error) {
      console.error('❌ Failed to send webhook:', error);
    }
  });
}